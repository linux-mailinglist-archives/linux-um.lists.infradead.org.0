Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46F1115A57
	for <lists+linux-um@lfdr.de>; Sat,  7 Dec 2019 01:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFs8V/7uyIVp3fK2KwfgPUXMGkVFRCOKhG2xnwfU2lc=; b=nMEFoykMjknjUK
	sv/OZHtAWPMsF240DOhNTHAXPEG3I0ryhxiPNTxRZYfBuSH5S61LgsZKEn/cVvB5g/xPoF+7EH1qS
	SsRLmNiLXo+GlvVzhYpUeA5ix2K1WoB/tVa0w7K1IQpV9q0H6hnXHRiFHTJktwhGwpzSzD3hGWD6A
	DMYjNRLsIZWrnQZUg4s6uJvLNyHXMCo7qbKFWmvU6GpcSlfCRH8nREV8IHE7GUDAmMw71XBryBMbC
	iIGkSzYdNaAhU8DHEfeYBi860CAnpXSJymPZW4tVe4nrxOSyimdLFmvosxnyY+bKkSrAXBQYs+Rv3
	P5uue9vYU2O5hjqULTxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idO1i-000565-Rs; Sat, 07 Dec 2019 00:32:50 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idO1f-00055U-Po
 for linux-um@lists.infradead.org; Sat, 07 Dec 2019 00:32:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id h14so4180939pfe.10
 for <linux-um@lists.infradead.org>; Fri, 06 Dec 2019 16:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9nA6TLXHYl8v79peg3VhVosiUxmffdmpQbw61XmrrVw=;
 b=k0mgtqawhqQauqAo6Xm6Y0XzZGm+X99KsWdAV+KuEkGfXAz/WbV5qUCiTIVMIqFkwk
 7YChpnQVxjemzb+1wlbUjYOprUtpKjXvqjRtjpw7O/Vsf1oTijwu+Po2hmkkgHo4rHWL
 yYy8ypWJhdy/D+TdRYSMxI5LAbmxsNoON7lZOBvucAOTj9ehPhvWT4RVSHNtjtSIpE7M
 IMfHqeUxooqAdCRdoVmiE+LDBu4CoMo7vw/OkUMVo/Wh3sR9MReIZOODRP+FVe9E2TII
 OgsKP/VB4cJYtHkOpR697qiXPFqarvTCZK58ExPs4sJ7HRe6kUR27yRcsJiWMAnTy6XZ
 VuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9nA6TLXHYl8v79peg3VhVosiUxmffdmpQbw61XmrrVw=;
 b=ZvgVfVyCks7vl9DwmzrN4CGDCmFfGKx6OBfOFtZVY9xiHDqYUBdb8sk6aBFtDwS1Bg
 XYoP+TM4+LvZNU3RSKbq4BJ71+GdGzM2B7AkvPPWDHJ+GRll9V2jQ+OM1O2UJKJK8afK
 dIknMQ60PyQvS42qXnJE4HlaFJkuvbnf+9YK6vSbehHp64OkhSYAe6qUnfgxvXABppbB
 Kfk2h0szzP3eizqLP/Hyg/nsNP2gTqCuvMhqzxaZ7BIS9RMCcBXQ0lFnl3bV6f9vVNmq
 6NDEx4LVKVl6NCePgR0n1sG0o6PSamn/krDinKYG5UwuD0fAsxGg+VZ/1ypVtThKVFMJ
 xRag==
X-Gm-Message-State: APjAAAWEryys1PVCeG3PiprZLv0S4GZco9bPKQXJaQZ5PKW18bPSSxAV
 tdRv+UTsOrHIqVHeeHFr7MNeQscopSQF/FnrAe1JVgDEbgnfIA==
X-Google-Smtp-Source: APXvYqyAM9UyYZckbr97n8v5vv5QX+O9jWt0njXHGztaN/fZMNU2oZVIVd2VtftBNRvnLjGxsuqS4BrCMBIKw6qyeGk=
X-Received: by 2002:aa7:961b:: with SMTP id q27mr17493808pfg.23.1575678766044; 
 Fri, 06 Dec 2019 16:32:46 -0800 (PST)
MIME-Version: 1.0
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
In-Reply-To: <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Fri, 6 Dec 2019 16:32:34 -0800
Message-ID: <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_163247_859999_620E781E 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: johannes.berg@intel.com, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 11:23 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
[...]
> 1. There is a proposed patch for the build system to fix it.
>
> 2. We should be removing all old drivers and replacing them with the
> vector ones.

Hmm...does this mean you would entertain a patch removing all the
non-vector UML network drivers? I would be happy to see VDE go as
well.

In any event, it sounds like I should probably drop this patch as it
is currently.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
