Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32023180A58
	for <lists+linux-um@lfdr.de>; Tue, 10 Mar 2020 22:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncQiKziZFTF+YjiO8aI2sGey6xaSnt/igLi4PuDH8BE=; b=Qs98qcsU77m6y7
	bPBZ3QbH1BpFCIRPnuyX/zkMsPRiw3P7qEjKYicTKfwnBb1eKk3LvfbshHeLo1NkJwsw5hlqGGIx+
	fqZFGqmOtPa3zW7OOwTs8znxuZ7RTxkDbNsv0YK6rvNXUSa8P9cU66wzrzcDCGOm1Ed+XP47ZUlZX
	sHqyh6Z1mVX6u6QEPoSNcyE1NxKyCSsMxo0oKX/wsQdSHB0W/TRDVgYbCpnDuCwSoxYiL4n1Nl2yR
	BukJZZAVuHbyR230FJ0EZrTvr/syLYIKrRul50ssDMN4WagZPL4bCd1w4+asQZCSYAJaVQGqJrMPj
	VK1bDcQhf3/A/MHJ3EJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBmMi-0006DW-7I; Tue, 10 Mar 2020 21:24:40 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBmMe-0006Cg-SW
 for linux-um@lists.infradead.org; Tue, 10 Mar 2020 21:24:38 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d8so982402pje.4
 for <linux-um@lists.infradead.org>; Tue, 10 Mar 2020 14:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w/CkCVqmCtyVrNdTteJRfzqZVn1Fmayt+pRMN6dA6WQ=;
 b=CYF6h+VXHl19LIAYXl7Ey55sWNZwBlILMjJhtQIgPX7qIyptQACPY8ADJcC8vkk7rs
 qKvI3FOahK7tMELwmCKGa/+HTlWZKP5TdgfiYa/X+GJkJip2WfomYqZRQYsTrQ5Hngch
 g2pImAJOaAMtIXpjDSqdxUOAUvZDika1yd7LHzIT9rOOPpJM9O8ok7cMt+2RLpQyoMUF
 tW5WKuknRZhn9qCC1Ui95yzJKCKrC7BDohv5ZnBjfqWNf5gXXdNeOx11HPMorOT6wn1J
 /9X/0saUjVqBA20QrP9OmCf1FXmea04Sg+i8Ei/iV8UB/94MS0KfV4phcOvFKoZfRzmh
 9HMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w/CkCVqmCtyVrNdTteJRfzqZVn1Fmayt+pRMN6dA6WQ=;
 b=QfcuboSszV2BQCZncGPAbMkSDr9RDDVcfCbjkk87VZfbkbQkmJeR6XJCYtT1JOf+BA
 q5L11BXxXoMiKjrNPndlEjSZcrOUVtKhqGk2eqWe9GKOhO53rL3W17BFDgRs0J9YAPEb
 m4PFWkbUT+lK7Y3B9vnzhteXaV/VG7Fb/Yfrdr2pBlE9r47EP55eMg2oTkdkvQZ8PFJ3
 OsDaA9biA5EecgdBS+brqsDnyTQ70Zxz3JHN1CX2brQr6a9ardgyrzo0MzVA7d3UvqKa
 3fBZit5V38mfSXy1wLTIQqVI/bhdZnNzjKufpuykU6F8MeIMCtW4oH1y/RUGzqj4/t1+
 E3Dw==
X-Gm-Message-State: ANhLgQ3FDEP0P5AU7c76b+dfuu6ogTg4j6dWsI8QHxkaSmqk2/SY5sqY
 W6F6Z7ckFNDf21nPqADkPuVs6Mv/knsH1hxXK8WgTdlCbzc=
X-Google-Smtp-Source: ADFU+vsyB4qoVmgV0c59ceJcwRDR+0Y3qDAkeMfEVqTmD1WBNGc0yteZMQlHwBo26GHPkAffZi8qVaqbzUdt/sfg0To=
X-Received: by 2002:a17:90a:fe04:: with SMTP id
 ck4mr3730232pjb.29.1583875473395; 
 Tue, 10 Mar 2020 14:24:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200305183939.256241-1-davidgow@google.com>
In-Reply-To: <20200305183939.256241-1-davidgow@google.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 10 Mar 2020 14:24:22 -0700
Message-ID: <CAFd5g45XJLXYfXB-FJhFYnBYUdqM4ztC=p=Akj3+GbHXfHxzgQ@mail.gmail.com>
Subject: Re: [PATCH] um: Fix overlapping ELF segments when statically linked
To: David Gow <davidgow@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_142436_952467_2C7A63A5 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Patricia Alfonso <trishalfonso@google.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 10:39 AM David Gow <davidgow@google.com> wrote:
>
> When statically linked, the .text section in UML kernels is not page
> aligned, causing it to share a page with the executable headers. As
> .text and the executable headers have different permissions, this causes
> the kernel to wish to map the same page twice (once as headers with r--
> permissions, once as .text with r-x permissions), causing a segfault,
> and a nasty message printed to the host kernel's dmesg:
>
> "Uhuuh, elf segment at 0000000060000000 requested but the memory is
> mapped already"
>
> By aligning the .text to a page boundary (as in the dynamically linked
> version in dyn.lds.S), there is no such overlap, and the kernel runs
> correctly.
>
> Signed-off-by: David Gow <davidgow@google.com>

I can confirm that I am seeing this problem as well. (I know we run
the same Linux distro; nevertheless, this is a real problem for some
population of users.)

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
