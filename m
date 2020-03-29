Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6F519708F
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kc+vBorvscFbcNoluHkKQl3/4wO4fbehEF2fCfq/d64=; b=IeNHPclGcrfoBs
	KLKVCR1M79wfRduecrkWacIqkreT64XIoukkDxBIhJtr2A2LuZ9W6awgiWxe6Rz1fBTS2CX+PmON0
	g+hrja2dFM+13jMRy0OWauxvZc8+zOcOzvneYDNeeyFMQQowQguYli5kk/QpH6Tl/jpI+4yH9qFof
	SJidTgf919RIRfRSJXUXcXBv7NiuvI/OQ7DdHlKc6KaLZvjIxqWJt8wFiapv+MrUrDpTaBNL0yflL
	suDA7SLLkfTQaSBXU18nvr2ax3edXiC8tXSfenRQnXmWntmwl/R29Ex9JnWE55u5S0ZLgyL/jZdlt
	Dspoq8QriLl4+sXgG/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfe8-0008Q2-Sm; Sun, 29 Mar 2020 21:39:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfe5-0008Pa-SD
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:39:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id m11so12973476wrx.10
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4+YFamD+rk3pGnPVsQCdZ4BWzaSDaazUq7GaLMAvAmQ=;
 b=ItnsYShcZm6ooRrKDOeQxLDzvFUEHhf1luwCKa2jXLuYMQLHD3kRPw9TDOJUY05WFA
 BRfkFkmum2aCG9ZfEepcnnnx1PQEsgX8YpLDsnPP9PYEPGwbgncnlFls1GUQVQTYM4M8
 wiqvgw3nuQcSK5aIJD6biTbwJu6aV9VIm+7GCMbV/5A/b06Ho0OJ4VcV2kD3mJyjCluc
 x+jmHy/iga9z0oabN/uuSn1uL/CJtvK5d/r40NG+ygCU0vsOmVXZt7PdTFhu+sj002jn
 Z/wj1hZgO9sxhypOB/UjppXuN7X+vOLQsa5lUiU/Fn6/w6jGI6YmEWngNVItWEj6Of7p
 fOSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4+YFamD+rk3pGnPVsQCdZ4BWzaSDaazUq7GaLMAvAmQ=;
 b=eCBrNAmJAnxRZIG5ez6QqKayrrKG+AZvgKIKh184XD+FT0o9dL4fboox3I5VqOel0c
 WfT8KqLFz7sJaSoRFUV1s4vNOI/vDZl1MsxIz8uzLT6GcCmzBCgmPMBw7xnp2i69Blty
 mlgGRFKUjqIFcOnfrPotfEh3e6XM/vv+BkpR5RZ/ZTu9TXq+kte+Qxs3u6s4mC24/rrF
 ILvvysF9Pd9UpF+zy7QCoobViHvRkXpgjhXFxn5REueFBwcz29enKO1lMWbhzDNPAcOX
 lov0NEfsHAbDTxyvehn81Klc+a2eTj+D0KV73f0D7GR67cl5jbMiTT2s0RSCN0hvM3c5
 udhQ==
X-Gm-Message-State: ANhLgQ2BfFWLMI97AG9lle0eksCsCnBfeSSGtn/jLmprR0gQuzUqqIqd
 o0bNYE8TuuVZTaHgoT+ywHJPlhuM3ZJXVdcMfho=
X-Google-Smtp-Source: ADFU+vu8292N+WSo2qX5+fXRx0ukzJleSgC0ZJHbXVoT6wC1iH/8UAVErvplccBL52nDTVHlBmLC0/+L4LQJg91oL+A=
X-Received: by 2002:adf:9384:: with SMTP id 4mr11351603wrp.214.1585517944701; 
 Sun, 29 Mar 2020 14:39:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200305183939.256241-1-davidgow@google.com>
 <CAFd5g45XJLXYfXB-FJhFYnBYUdqM4ztC=p=Akj3+GbHXfHxzgQ@mail.gmail.com>
In-Reply-To: <CAFd5g45XJLXYfXB-FJhFYnBYUdqM4ztC=p=Akj3+GbHXfHxzgQ@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:38:53 +0200
Message-ID: <CAFLxGvw6Sp899NN3CMvC4R9Uz1dSiKw4mdwnKRUvnGg-mr7ttw@mail.gmail.com>
Subject: Re: [PATCH] um: Fix overlapping ELF segments when statically linked
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_143905_941154_CFB8936A 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:24 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Thu, Mar 5, 2020 at 10:39 AM David Gow <davidgow@google.com> wrote:
> >
> > When statically linked, the .text section in UML kernels is not page
> > aligned, causing it to share a page with the executable headers. As
> > .text and the executable headers have different permissions, this causes
> > the kernel to wish to map the same page twice (once as headers with r--
> > permissions, once as .text with r-x permissions), causing a segfault,
> > and a nasty message printed to the host kernel's dmesg:
> >
> > "Uhuuh, elf segment at 0000000060000000 requested but the memory is
> > mapped already"
> >
> > By aligning the .text to a page boundary (as in the dynamically linked
> > version in dyn.lds.S), there is no such overlap, and the kernel runs
> > correctly.
> >
> > Signed-off-by: David Gow <davidgow@google.com>
>
> I can confirm that I am seeing this problem as well. (I know we run
> the same Linux distro; nevertheless, this is a real problem for some
> population of users.)
>
> Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
